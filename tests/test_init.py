import os
import sys

import pytest
from cryptography.exceptions import InvalidTag

from chacha20poly1305_reuseable import ChaCha20Poly1305Reusable


class TestChaCha20Poly1305Reusable:
    @pytest.mark.skipif(sys.maxsize <= 2**32, reason="requires 64bit system")
    def test_data_too_large(self):
        key = ChaCha20Poly1305Reusable.generate_key()
        chacha = ChaCha20Poly1305Reusable(key)
        nonce = b"0" * 12
        fake_data = b"0" * (2**32 + 1)

        with pytest.raises(OverflowError):
            chacha.encrypt(nonce, fake_data, b"")

        with pytest.raises(OverflowError):
            chacha.encrypt(nonce, b"", fake_data)

    def test_generate_key(self):
        key = ChaCha20Poly1305Reusable.generate_key()
        assert len(key) == 32

    def test_bad_key(self):
        with pytest.raises(TypeError):
            ChaCha20Poly1305Reusable(object())

        with pytest.raises(ValueError):
            ChaCha20Poly1305Reusable(b"0" * 31)

    @pytest.mark.parametrize(
        ("nonce", "data", "associated_data"),
        [
            [object(), b"data", b""],
            [b"0" * 12, object(), b""],
            [b"0" * 12, b"data", object()],
        ],
    )
    def test_params_not_bytes_encrypt(self, nonce, data, associated_data):
        key = ChaCha20Poly1305Reusable.generate_key()
        chacha = ChaCha20Poly1305Reusable(key)
        with pytest.raises(TypeError):
            chacha.encrypt(nonce, data, associated_data)

        with pytest.raises(TypeError):
            chacha.decrypt(nonce, data, associated_data)

    def test_nonce_not_12_bytes(self):
        key = ChaCha20Poly1305Reusable.generate_key()
        chacha = ChaCha20Poly1305Reusable(key)
        with pytest.raises(ValueError):
            chacha.encrypt(b"00", b"hello", b"")

        with pytest.raises(ValueError):
            chacha.decrypt(b"00", b"hello", b"")

    def test_decrypt_data_too_short(self):
        key = ChaCha20Poly1305Reusable.generate_key()
        chacha = ChaCha20Poly1305Reusable(key)
        with pytest.raises(InvalidTag):
            chacha.decrypt(b"0" * 12, b"0", None)

    def test_associated_data_none_equal_to_empty_bytestring(self):
        key = ChaCha20Poly1305Reusable.generate_key()
        chacha = ChaCha20Poly1305Reusable(key)
        nonce = os.urandom(12)
        ct1 = chacha.encrypt(nonce, b"some_data", None)
        ct2 = chacha.encrypt(nonce, b"some_data", b"")
        assert ct1 == ct2
        pt1 = chacha.decrypt(nonce, ct1, None)
        pt2 = chacha.decrypt(nonce, ct2, b"")
        assert pt1 == pt2

    def test_buffer_protocol(self):
        key = ChaCha20Poly1305Reusable.generate_key()
        chacha = ChaCha20Poly1305Reusable(key)
        pt = b"encrypt me"
        ad = b"additional"
        nonce = os.urandom(12)
        ct = chacha.encrypt(nonce, pt, ad)
        computed_pt = chacha.decrypt(nonce, ct, ad)
        assert computed_pt == pt
        chacha2 = ChaCha20Poly1305Reusable(bytearray(key))
        ct2 = chacha2.encrypt(bytearray(nonce), pt, ad)
        assert ct2 == ct
        computed_pt2 = chacha2.decrypt(bytearray(nonce), ct2, ad)
        assert computed_pt2 == pt
