
import cython


cdef cython.uint _ENCRYPT
cdef cython.uint _DECRYPT

cdef object backend
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

cdef object MAX_SIZE
cdef cython.uint KEY_LEN
cdef object NONCE_LEN
cdef cython.uint NONCE_LEN_UINT
cdef object TAG_LENGTH
cdef cython.uint TAG_LENGTH_UINT
cdef object CIPHER_NAME
cdef cython.int NEGATIVE_TAG_LENGTH_INT

cdef object TEST_CIPHER

cdef class ChaCha20Poly1305Reusable:

    cdef object _key
    cdef object _encrypt_ctx
    cdef object _decrypt_ctx

    cpdef encrypt(self, object nonce, bytes data, object associated_data)

    cpdef decrypt(self, object nonce, bytes data, object associated_data)


cdef void _check_params(object nonce, bytes data)

@cython.locals(res=cython.uint)
cdef _set_nonce(object ctx, object nonce, cython.uint operation)

@cython.locals(res=cython.uint)
cdef _aead_setup_with_fixed_nonce_len(object cipher_name, object key, object nonce_len, cython.uint operation)

@cython.locals(res=cython.uint)
cdef _process_aad(object ctx, object associated_data)

@cython.locals(res=cython.uint, data_len=object)
cdef bytes _process_data(object ctx, bytes data)

cdef bytes _encrypt_with_fixed_nonce_len(
    object ctx,
    object nonce,
    bytes data,
    object associated_data,
)

cdef void openssl_assert(bint ok)

@cython.locals(res=cython.uint)
cdef bytes _encrypt_data(
    object ctx,
    bytes data,
    object associated_data,
)

@cython.locals(res=cython.uint)
cdef bytes _decrypt_with_fixed_nonce_len(
    object ctx,
    object nonce,
    bytes data,
    object associated_data,
)

@cython.locals(res=cython.uint)
cdef bytes _decrypt_data(
    object ctx,
    bytes data,
    object associated_data
)
