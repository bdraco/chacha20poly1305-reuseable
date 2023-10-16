
import cython


cdef object _ENCRYPT
cdef object _DECRYPT

cdef object lib
cdef object ffi

cdef object InvalidTag
cdef object openssl_failure
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

cdef cython.long MAX_SIZE
cdef object KEY_LEN
cdef object NONCE_LEN
cdef cython.uint NONCE_LEN_UINT
cdef object TAG_LENGTH
cdef cython.uint TAG_LENGTH_UINT
cdef object CIPHER_NAME
cdef cython.int NEGATIVE_TAG_LENGTH_INT

cdef class ChaCha20Poly1305Reusable:

    cdef object _key
    cdef object _encrypt_ctx
    cdef object _decrypt_ctx

    cpdef encrypt(self, object nonce, bytes data, object associated_data)

    cpdef decrypt(self, object nonce, bytes data, object associated_data)

cdef _check_params(
    object nonce,
    object data,
    object associated_data
)

cdef _set_nonce(object ctx, object nonce, object operation)

cdef _aead_setup_with_fixed_nonce_len(object cipher_name, object key, object nonce_len, object operation)

cdef _process_aad(object ctx, object associated_data)

cdef _process_data(object ctx, object data)

cdef _encrypt_with_fixed_nonce_len(
    object ctx,
    object nonce,
    object data,
    object associated_data,
)

cdef openssl_assert(object ok)

cdef _encrypt_data(
    object ctx,
    object data,
    object associated_data,
)

cdef _decrypt_with_fixed_nonce_len(
    object ctx,
    object nonce,
    object data,
    object associated_data,
)

cdef _decrypt_data(
    object ctx,
    object data,
    object associated_data
)
