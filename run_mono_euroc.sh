if [ ! -d "./MH01/" ]
then
    wget -c http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/machine_hall/MH_01_easy/MH_01_easy.zip
    mkdir MH01
    unzip MH_01_easy.zip -d MH01/
else
    echo "Already downloaded"
fi

./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt  ./Examples/Monocular/EuRoC.yaml ./MH01  ./Examples/Monocular/EuRoC_TimeStamps/MH01.txt dataset-MH01_mono
