# Changelog

## v0.13.2 (2024-07-21)

### Fix


- Release process (#41) ([`2b56cad`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/2b56cadc195fb8bb5347ab82d186f9fc4a683f33))


- Switch to github trusted publishing (#40) ([`162f63a`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/162f63a2ed9ae3d03d9e1057fe35d165b5425e2a))


## v0.13.1 (2024-07-21)

### Fix


- Remove cython from ci (#39) ([`3e82ef4`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/3e82ef49a4569e46d749ade703fa6a4385142983))


## v0.13.0 (2024-07-21)

### Feature


- Switch to built-in cryptography implementation (#38) ([`d074fb2`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/d074fb203372b6637d690e2ee099a73f5f9e1040))


## v0.12.2 (2024-07-15)

### Fix


- License classifier (#37) ([`42bc54a`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/42bc54a3f9850b0481c21868576e033a617b49cb))


## v0.12.1 (2024-01-27)

### Fix


- Remove cipher check to fix compat with cryptography 42 (#35) ([`afd8961`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/afd89610db349e004fbda076703a1459c80b10b0))


## v0.12.0 (2023-12-05)

### Feature


- Small speed ups to decrypt (#33) ([`7a93c6e`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/7a93c6e85bea95ebc17433e311e0e9156944ce45))


## v0.11.0 (2023-11-08)

### Feature


- Build aarch64 wheels (#31) ([`d8cc70d`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/d8cc70d4378b9cff137a336cc4e154346c3cbb39))


## v0.10.2 (2023-10-21)

### Fix


- Remove cython type for max_size (#28) ([`fb1a49a`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/fb1a49ad54b9d059d570b2482ab364aa19f631a1))


## v0.10.1 (2023-10-18)

### Fix


- Reduce size of wheels by excluding generated .c files (#27) ([`ce54e5b`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/ce54e5b8eeeb513c826450ae33484d0f8f793dc1))


## v0.10.0 (2023-10-16)

### Feature


- Performance improvements (#20) ([`5b863ed`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/5b863ed1e39a2b78673c53957ac44cb2f772b056))


## v0.9.0 (2023-10-16)

### Feature


- Speed up openssl asserts (#26) ([`eb77852`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/eb778524082aa5008202498a6ac3bc131d192ac9))


## v0.8.0 (2023-10-16)

### Feature


- Remove dynamic nonce check length (#25) ([`1985312`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/1985312760b1ccd88ff49fb64ae1ae1cb646766c))


## v0.7.0 (2023-10-16)

### Feature


- Speed up max length check (#24) ([`38c99e2`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/38c99e2ea059b9b611b669bbbf33e8a3832eebb1))


- Remove dynamic tag length checks (#23) ([`6ba6ac7`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/6ba6ac7c7f787283f668f99e33c825ec73d8f960))


## v0.6.0 (2023-10-16)

### Feature


- Cythonize chacha20poly1305reusable class to improve performance (#22) ([`8ae19ec`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/8ae19ec8e1af7d1446bcb6f8a5249df25ef966e8))


## v0.5.0 (2023-10-16)

### Feature


- Build python 3.12 wheels (#21) ([`9e09492`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/9e09492c3c6f20dc4f477cb0bd6cbafd202edd75))


## v0.4.2 (2023-08-27)

### Fix


- Rebuild wheels with cython 3.0.2 (#17) ([`2876c98`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/2876c9856f719059c73b618b90902c15342a5ba2))


## v0.4.1 (2023-07-24)

### Fix


- Cython 3 compat (#16) ([`41165b4`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/41165b4be3c5768f68124b484afd23c83557c5d8))


## v0.4.0 (2023-07-24)

### Feature


- Initial cpython 3.12 support (#15) ([`4187052`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/41870523eb8e55d476f8dd11b0d405125a4c086b))


## v0.3.0 (2023-07-16)

### Feature


- Speed up implementation (#14) ([`c9cd330`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/c9cd330efe31f5719a3e54f6de38585cc5600486))


## v0.2.5 (2023-04-28)

### Fix


- Force utf-8 for build (#12) ([`e62972e`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/e62972ebf83d8576a54cd38a65b988e81ef299c7))


## v0.2.4 (2023-04-28)

### Fix


- Bump deps to fix ci build (#11) ([`6894b4d`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/6894b4d33dd62e46beb5e4d0da2ebc8981b50e7d))


## v0.2.3 (2023-04-28)

### Fix


- Rebuild wheels with newer ciwheelbuild (#10) ([`73e543a`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/73e543a7a2bd4648a879cd0c3c9206328d87338d))


## v0.2.2 (2023-04-07)

### Fix


- More ci fixes (#8) ([`b47d7c7`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/b47d7c7d7af73e7f37e72a292230d75ffcede008))


- More ci fixes (#7) ([`c79e97a`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/c79e97ae7761201cb22c9f0bab5998551a914d74))


## v0.2.1 (2023-04-07)

### Fix


- Rebuild to fix ci (#6) ([`1c109e5`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/1c109e5a7233756f961fe7febaf02283c81bd297))


## v0.2.0 (2023-04-07)

### Feature


- Add cython backend (#5) ([`5f516b5`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/5f516b5a70b9d21d174eef8393b2e3a351aba067))


## v0.1.0 (2023-03-24)

### Feature


- Add typing (#3) ([`b1e3298`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/b1e3298fba18e68d1ebface09f4958fb6c236964))


## v0.0.4 (2022-07-05)

### Unknown



### Fix


- Small typing fixes ([`be14cc2`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/be14cc2dc74d81b49bf761c32ce5536e31be74ce))


## v0.0.3 (2022-06-19)

### Unknown



## v0.0.2 (2022-06-18)

### Unknown






### Documentation


- Add @bdraco as a contributor ([`e84062f`](https://github.com/bdraco/chacha20poly1305-reuseable/commit/e84062f4487cea404e39c725081ea77c9d35d914))

