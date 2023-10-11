<!--next-version-placeholder-->

## v0.7.0 (2023-10-11)

### Feature

* **docker:** Optimize dockerfile for txtgen-webui app ([`afb62f8`](https://github.com/entelecheia/txtgen-webui-container/commit/afb62f822537c78af299c41ac2fd85f842081d5c))
* **docker:** Add APP_SOURCE_REPO and APP_SOURCE_BRANCH environment variables ([`b1895da`](https://github.com/entelecheia/txtgen-webui-container/commit/b1895dad01d09d542123739bd9ab2a9372a5987e))

## v0.6.0 (2023-10-11)

### Feature

* **docker:** Add development base image ([`5cbf144`](https://github.com/entelecheia/txtgen-webui-container/commit/5cbf144a5f7695d6ccbfa873de8d933b84509a3d))
* **docker:** Restructured Dockerfile for builder and runtime stages ([`2dcbeab`](https://github.com/entelecheia/txtgen-webui-container/commit/2dcbeabde82531ba40e33fb666849292354a58e7))
* **docker:** Install requirements from requirements.txt in launch.sh ([`e168d18`](https://github.com/entelecheia/txtgen-webui-container/commit/e168d18552aaafe0dcb71779ff964e7609f746d2))

## v0.5.0 (2023-10-11)

### Feature

* **server:** Allow passing CLI arguments to server script ([`f4ed84d`](https://github.com/entelecheia/txtgen-webui-container/commit/f4ed84d9a9162b851e4ec4868cbfa5a5e343a97b))
* **docker:** Add listen and api options to server launch command ([`ac93322`](https://github.com/entelecheia/txtgen-webui-container/commit/ac93322863c62adf5790dab41a9ba18231d04835))

## v0.4.0 (2023-10-11)

### Feature

* **dockerfile:** Simplify docker layers by removing separate build stage, add essential packages and workspace setup ([`4575bcf`](https://github.com/entelecheia/txtgen-webui-container/commit/4575bcfca837e4afac272464d338e08f9b759d90))

## v0.3.0 (2023-10-11)

### Feature

* **docker:** Map new directories from host to container ([`926b129`](https://github.com/entelecheia/txtgen-webui-container/commit/926b129e752be32b5cec253d87cef83c86491b41))
* **softprompts:** Add .gitkeep file ([`bbf55dc`](https://github.com/entelecheia/txtgen-webui-container/commit/bbf55dc1fc3a90295831f11d50cc7564750fd27a))
* **training:** Add new datasets and format files ([`249923c`](https://github.com/entelecheia/txtgen-webui-container/commit/249923cdba515456de4adc05d65d7352893a96dc))
* **workspace:** Add new characters and conversation samples ([`8c7f865`](https://github.com/entelecheia/txtgen-webui-container/commit/8c7f865a77f20469f56e50625f5f7c473de16432))
* **docker:** Add xformers package installation ([`80b945d`](https://github.com/entelecheia/txtgen-webui-container/commit/80b945ddab3f639c410dbbd66aaee71793ef72ee))
* **docker:** Add huggingface cache directory and ssh public key configurations ([`73b09ae`](https://github.com/entelecheia/txtgen-webui-container/commit/73b09ae754280e5b98617d340e15aa78a8800503))
* **docker:** Add new configuration parameters for API_PORT and API_STREAM_PORT ([`2a1c9d0`](https://github.com/entelecheia/txtgen-webui-container/commit/2a1c9d00352cf912c4ae06baafb13bb278a4b41d))
* **docker:** Add new volume mappings and port mappings in docker-compose.app.yaml ([`387b1be`](https://github.com/entelecheia/txtgen-webui-container/commit/387b1be362941bc6c4997f1049b858cd342fffc9))

## v0.2.0 (2023-10-10)

### Feature

* **dockerfile:** Move git clone command and add extension requirements installation ([`4d03689`](https://github.com/entelecheia/txtgen-webui-container/commit/4d0368935b5bc9ae88ef8aa30774d1bc875d3f9c))
* **docker:** Add .so file copying in Dockerfile.base ([`d0506f3`](https://github.com/entelecheia/txtgen-webui-container/commit/d0506f33439dbf1adbc76ab34f612a68734d1fd2))

### Fix

* **dependencies:** Update and add new packages in requirements-base.txt ([`de52e49`](https://github.com/entelecheia/txtgen-webui-container/commit/de52e493582a25439f8ce5d76f3770decdd463fe))

## v0.1.0 (2023-10-10)

### Feature

* **dependencies:** Update required packages in requirements.txt ([`5ee1ad3`](https://github.com/entelecheia/txtgen-webui-container/commit/5ee1ad35024bf44c8b52beedf700e4771fc579bd))
* **docker scripts:** Add new dependencies to requirements-base.txt ([`85974b5`](https://github.com/entelecheia/txtgen-webui-container/commit/85974b5216b33303df280347914b4052998d0918))
* **docker:** Add TORCH_CUDNN argument and env variable ([`85bee68`](https://github.com/entelecheia/txtgen-webui-container/commit/85bee68c1d3dc45515f6b0e1bfa756714cb5efd1))
* Initial version ([`dc673d7`](https://github.com/entelecheia/txtgen-webui-container/commit/dc673d7224e4524a7fd2952725610e255372475c))
