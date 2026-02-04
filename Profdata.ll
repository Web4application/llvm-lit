Example:
# Profile generation run using LLVM IR PGO:
% cmake -DTEST_SUITE_PROFILE_GENERATE=ON \
        -DTEST_SUITE_USE_IR_PGO=ON \
        -DTEST_SUITE_RUN_TYPE=train \
        ../llvm-test-suite
% make
% llvm-lit .
# Use the profile data for compilation and actual benchmark run:
% cmake -DTEST_SUITE_PROFILE_GENERATE=OFF \
        -DTEST_SUITE_PROFILE_USE=ON \
        -DTEST_SUITE_RUN_TYPE=ref \
        .
% make
% llvm-lit -o result.json .
