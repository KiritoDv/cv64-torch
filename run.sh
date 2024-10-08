python3 ./k64_decompress_lzkn64.py ./baserom.us.z64 baserom.uncompressed.us.z64
make -C Torch type=release -j12
rm torch.hash.yml
./Torch/cmake-build-release/torch code baserom.uncompressed.us.z64 -v
./Torch/cmake-build-release/torch modding export baserom.uncompressed.us.z64