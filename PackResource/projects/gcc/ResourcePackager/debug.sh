
CompileCmd='g++ -std=c++17'

Config=Debug
ProjectName=ResourcePackager
SourceDir=../../sources/${ProjectName}
OutputDir=../../../output/${ProjectName}/${Config}
InterDir=../../../output/${ProjectName}/Intermediate
TargetFile=${OutputDir}/${ProjectName}

cd $(dirname "$0")


${CompileCmd} -c ${SourceDir}/rp_ResPackager.cpp -o ${InterDir}/rp_ResPackager.o
${CompileCmd} -c ${SourceDir}/rp_main.cpp -o ${InterDir}/rp_main.o
${CompileCmd} -o ${TargetFile} ${InterDir}/rp_ResPackager.o ${InterDir}/rp_main.o -lstdc++fs

