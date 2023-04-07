
import cython


cdef cython.uint _ENCRYPT
cdef cython.uint _DECRYPT

cdef object InvalidTag
cdef object openssl_assert
cdef object NULL

cdef object EVP_CIPHER_CTX_ctrl
cdef object EVP_CTRL_AEAD_SET_TAG
cdef object EVP_CTRL_AEAD_SET_IVLEN
cdef object EVP_CipherInit_ex
cdef object EVP_CIPHER_CTX_new
cdef object EVP_CIPHER_CTX_free
cdef object EVP_get_cipherbyname
cdef object EVP_CIPHER_CTX_set_key_length
cdef object EVP_CipherUpdate
cdef object EVP_CipherFinal_ex
cdef object EVP_CTRL_AEAD_GET_TAG

cdef object ffi_gc
cdef object ffi_new
cdef object ffi_from_buffer
cdef object ffi_buffer

cdef _create_ctx()


cdef _set_cipher(object ctx, object cipher_name, cython.uint operation)

cdef _set_key_len(object ctx, cython.uint key_len)

cdef _set_key(object ctx, object key, cython.uint operation)

cdef _set_decrypt_tag(object ctx, object tag)

cdef _set_nonce_len(object ctx, cython.uint nonce_len)

cdef _set_nonce(object ctx, object nonce, cython.uint operation)

cdef _aead_setup_with_fixed_nonce_len(object cipher_name, object key, cython.uint nonce_len, cython.uint operation)

cdef _process_aad(object ctx, object associated_data)

cdef _process_data(object ctx, object data)

cdef _encrypt_with_fixed_nonce_len(
    object ctx,
    object nonce,
    cython.bytes data,
    cython.bytes associated_data,
    cython.uint tag_length,
)

cdef _encrypt_data(
    object ctx,
    cython.bytes data,
    cython.bytes associated_data,
    cython.uint tag_length
)

cdef _tag_from_data(cython.bytes data, cython.uint tag_length)

cdef _decrypt_with_fixed_nonce_len(
    object ctx,
    object nonce,
    cython.bytes data,
    cython.bytes associated_data,
    cython.uint tag_length
)

cdef _decrypt_data(
    object ctx,
    cython.bytes data,
    cython.bytes associated_data
)
