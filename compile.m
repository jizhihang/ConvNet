clear mex

kBuildFolder = './c++/build';
if (~exist(kBuildFolder, 'dir'))
  mkdir(kBuildFolder);
end;

mex ./c++/cnntrain_mex.cpp ./c++/sources/*.cpp ...
  -largeArrayDims ...
  -I"./c++/include/" ...
  -outdir ./c++/build
disp('cnntrain_mex compiled');
  
mex ./c++/classify_mex.cpp ./c++/sources/*.cpp ...
  -largeArrayDims ...
  -I"./c++/include/" ...
  -outdir ./c++/build
disp('classify_mex compiled');
  
mex ./c++/genweights_mex.cpp ./c++/sources/*.cpp ...
  -largeArrayDims ...
  -I"./c++/include/" ...
  -outdir ./c++/build
disp('genweights_mex compiled');
