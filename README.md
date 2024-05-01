
<img align="right" width="180" height="180" src="https://avatars.githubusercontent.com/u/115706761?s=400&u=7c6cae892816e172b0b7eef99f2d32adb948c6ad&v=4">

## Acoustic Monitoring of Bat sounds

The study of classyfing animal sounds occuring in their natural environment is called bioacoustics. Animal vocalisations and natural soundscapes are fascinating objects of study, and contain valuable evidence about animal behaviours, populations and ecosystems.

Understanding bat populations and behavior is crucial for their conservation, but these nocturnal creatures are difficult to study directly. Their speed, nighttime activity, and preferred habitats make traditional observation methods impractical. Thankfully, bats use ultrasonic sounds for navigation, making acoustic monitoring a powerful tool for bat research.
 
Thus, classification of the acoustic repertoires of bats into sound types is a useful tool for taxonomic studies, behavioral studies, and for documenting their occurrence.


 Views since 30 April 2024: [![HitCount](https://hits.dwyl.com/robvdw/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING.svg?style=flat-square)](http://hits.dwyl.com/robvdw/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING)
  <br>
  Unique visitors:   [![HitCount](https://hits.dwyl.com/robvdw/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING.svg?style=flat-square&show=unique)](http://hits.dwyl.com/robvdw/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING)


<!--
![image](https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/assets/684692/e2ad7597-484b-40d3-b02e-15ca445b0a9b)
-->

## Scalogram-Based Deep Learning Approach 

In the exciting new world of Artificial Intelligence (AI), deep learing-based computer vision (CV) lets computers "see" and classify images. But what if you could apply CV to "hear"  and classify sounds? 

Imagine trying to identify a bat species just by listening to its sounds. For decades, scientists relied on acoustic features like pitch and loudness, calculated by hand, to classify sounds. But recently, a new approach has emerged. Deep learning-based CV that can automatically classify images of sound called scalograms.



<br/> 

<img align="left" width="200" height="200" src="https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/assets/684692/df1d5552-dc9c-44bd-9e83-d32f493ed752">

<img align="left" width="200" height="200" src="https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/assets/684692/d8fe838a-e28e-46fa-88a7-a158d30956e3">

<img align="left" width="200" height="200" src="https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/assets/684692/3d1920aa-51e0-4c11-b3a5-4825f9e4c8fd">


Shown are scalogram images of 3 bat species that are wide spread in the Netherlands: 
Vespertilio_murinus / Plecotus_auritus/ Pipistrellus_pipistrellus.

#

<pre>
The scalogram is defined as the square modulus of the ContinuousWavelet Transform (CWT) 
and is known as a powerful tool for analyzing real-world signals.

The matlab file:
<a href="https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/blob/main/Code/BAT_CALL_SCALOGRAM_Matlab_code_example.m">BAT_CALL_SCALOGRAM_Matlab_code_example.m </a>
contains code to compute the scalograms from <a href="https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/tree/main/Audio">.WAV bat sound audio-files </a>

Adapted from: GPU Acceleration of Scalograms for Deep Learning
<a href="https://nl.mathworks.com/help/wavelet/ug/gpu-acceleration-scalograms-for-deep-learning.html?searchHighlight=scalogram&s_tid=srchtitle_support_results_2_scalogram">Matworks:Wavelet</a>
</pre>


## Computer Vision driven Audio Classification
Computer Vision driven Audio Classification marries the two domains by applying the principles of visual understanding to audio data. It leverages deep learning techniques to "see" sound, just as it would with images. This innovation has opened doors to automatically determine bat species based on acoustic sound montoring alone.
<br/>
<br/>


<img align="left" width="800" height="300" src="https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/assets/684692/3273ff1c-bbec-49f6-a89d-157202d18773">


*****

<pre>

Figure adapted from: 
Scarpiniti, M.; Parisi, R.; Lee, Y.-C. 
A Scalogram-Based CNN Approach for Audio Classification in Construction Sites. Appl. Sci. 2024, 14, 90. 
<a href="https://doi.org/10.3390/app14010090">https://doi.org/10.3390/app14010090t_databases</a>
</pre>

<!--
![image](https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/assets/684692/2bd3776f-9e19-4da3-82bb-32f77fb7e187)
-->


## Research Aim

Motivated by the above stated considerations, we propose a "Transfer Learning" approach for the
automatic monitoring of bats sounds by developing a Computer Vision-driven Deep Learning based  AI-model for Audio Classification of bat sound scalograms.

## Dataset

Initially, --- to provide a Proof-of-Concept  (PoC)--- we will start using the  [ChiroVox website](https://www.chirovox.org/stat.php), the home of bat recordings from all over the world. The site is intended to facilitate work with bat sounds and is based on the Asian Bat Call Database, an initiative of the Hungarian Natural History Museum (HNHM) and the Southeast Asian Bat Conservation Research Unit (SEABCRU). 

<pre>
Matlab code is provided here that allows you to locally download all avaiable bat sound audio-files that are contained in the ChiroVox database.
<a href="https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/blob/main/Code/DownLoad_Locally_ChiroVOX_Species_wav_filesMatlab_code_example.m">DownLoad_Locally_ChiroVOX_Species_wav_filesMatlab_code_example.m</a>
</pre>



In addition,  we will use the recodinglist database from the [Xeno-canto Foundation](https://xeno-canto.org/collection/). It is a [citizen science project](https://en.wikipedia.org/wiki/Xeno-canto) and repository in which volunteers record, upload and annotate recordings of bird calls and sounds of orthoptera and bats from Europe, including the Netherlands. It is sponsored by [Naturalis Biodiversity Center](https://www.naturalis.nl/).

In a later phase we will add bat sound recordings from [species](https://www.vleermuis.net/329-geluiden/215-vleermuisgeluiden) that naturally occure in the Netherlands. These recordings will be made available through (DataverseNL)[https://dataverse.nl/] under a creative commons zero license [(CC0)](https://creativecommons.org/public-domain/cc0/).

#

## Research Approach: Transfer Learning

We aim to develop a open-source Audio Classification Model dedicated to bat sound analysis using a transfer learning approach with high-resolution scalogram images as input data. 

<img align="left" width="900" height="400" src="https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/assets/684692/c2cccb48-c6d9-44d9-ab01-9a5ade36f8b5">

The [DSI-stack](https://cursus.logistiekdigitaal.nl/course/building-a-data-driven-infrastructure) , shown here, will be used to implement our *bats sound classification* use case. Its main purpose is to make informed infrastructural decisions when employing the CRISP-DM workflow. The DSI-stack is compartmentalized into eight layers — [1] Data Warehousing; [2] Compute Resources; [3] Toolchain; [5] Workflow Orchestration; [5] Software Architecture; [6] Model Development; [7] Feature Engineering; [8] Data Product. 
Deployment— whereby the dependency on infrastructure —i.e., involvement of a data engineer as indicated by the blue colored area—progressively increases toward the bottom of the stack. 

</br>

We will start by implementing Matlab's audioPretrainedNetwork [Matlab Mathworks](https://nl.mathworks.com/help/audio/ref/audiopretrainednetwork.html#description) that allows to [implement](https://nl.mathworks.com/help/deeplearning/ug/transfer-learning-with-audio-networks-in-deep-network-designer.html) transfer learning with a specified pretrained audio neural networks like YAMnet or VGGish.

 A comparison will be made to [Google's Tensorflow implementation](https://www.tensorflow.org/tutorials/audio/transfer_learning_audio) of transfer learning with YAMNet for environmental sound classification and [Pytorch Audio classification](https://bamblebam.medium.com/audio-classification-and-regression-using-pytorch-48db77b3a5ec).

<img align="left" width="500" height="250" src="image-1.png">

Shown is a taxonomy of Deep learning architectures commonly used for audio classification:  

Convolutional Neural Networks (CNNs), Recurrent Neural Networks (RNNs), autoencoders, transformers and hybrid models (hybrid deep learning models, such as CNN-RNN and hybrid deep learning models with traditional classifiers such as CNN-SVM).

</br>

</br>

</br>

</br>

The most promising pre-trained deep learning audio classifiers are Audio Spectrogram Transformer models according to  [Papers with Code](https://paperswithcode.com/task/audio-classification). But the top 5 are not available through the open-source transformers library [Huggingface](https://huggingface.co/).

</br>

<img align="left" width="500" height="600" src="image-3.png"> Most transformer models are benchmarked with [AudioSet](https://research.google.com/audioset/). It consists of an expanding ontology of 632 audio event classes and a collection of 2,084,320 human-labeled 10-second sound clips drawn from YouTube videos. See also [List of datasets for machine-learning research](https://en.wikipedia.org/wiki/List_of_datasets_for_machine-learning_research) + The AudioSet ontology is a collection of sound events organized in a hierarchy [(see also Google AudioSet Ontology)](https://research.google.com/audioset/ontology/index.html). Note, however, AudioSet does not contain bat sounds.



<!--
https://paperswithcode.com/sota/audio-classification-on-audioset
<img align="left" width="600" height="800" src="image-2.png"> The most prommising model as VGGish and Yamnet
--> 


</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>




## Studied Materials

1. Abayomi-Alli OO, Damaševičius R, Qazi A, Adedoyin-Olowe M, Misra S. Data Augmentation and Deep Learning Methods in Sound Classification: A Systematic Review. (2022). *Electronics, 11(22):* 3795. [DOI](https://doi.org/10.3390/electronics11223795)

2. Aburakhia, S., Shami, A., & Karagiannidis, G. K. (2024). On the intersection of signal processing and machine learning: A use case-driven analysis approach. *arXiv preprint arXiv:2403.17181*. [DOI](https://doi.org/10.48550/arXiv.2403.17181)

3. Borowiec, M. L., Dikow, R. B., Frandsen, P. B., McKeeken, A., Valentini, G., & White, A. E. (2022). Deep learning as a tool for ecology and evolution. *Methods in Ecology and Evolution, 13(6),* 1640-1660. [DOI](https://doi.org/10.1111/2041-210X.13901)

4. Cappellazzo, U., Falavigna, D., Brutti, A., & Ravanelli, M. (2023). *Parameter-Efficient Transfer Learning of Audio Spectrogram Transformers.*  arXiv preprint arXiv:2403.17181.  [DOI](https://doi.org/10.48550/arXiv.2403.17181)

5. Chen, S., Wu, Y., Wang, C., Liu, S., Tompkins, D., Chen, Z., & Wei, F. (2022). Beats: Audio pre-training with acoustic tokenizers. *arXiv preprint arXiv:2212.09058v1*. [DOI](https://doi.org/10.48550/arXiv.2212.09058)

6. Fundel, F., Braun, D. A., & Gottwald, S. (2023). Automatic bat call classification using transformer networks. *Ecological Informatics, 78,* 102288. [DOI](https://doi.org/https://doi.org/10.1016/j.ecoinf.2023.102288)

7. Görföl, T., Huang, J. C., Csorba, G., Győrössy, D., Estók, P., Kingston, T., ... Zsebők, S. (2022). ChiroVox: A public library of bat calls. *PeerJ, 10,* e12445. [DOI](https://doi.org/10.7717/peerj.12445)

8. Jung, K., Molinari, J., & Kalko, E. K. V. (2014). Driving factors for the evolution of species-specific echolocation call design in New World free-tailed bats (Molossidae). *PLoS ONE, 9(1),* e85279. [DOI](https://doi.org/10.1371/journal.pone.0085279)

9. Michaud, F., Sueur, J., Le Cesne, M., & Haupert, S. (2023). Unsupervised classification to improve the quality of a bird song recording dataset. *Ecological Informatics, 74,* 101952.
[DOI](https://doi.org/10.1016/j.ecoinf.2022.101952)

10. Oswald, J. N., Erbe, C., Gannon, W. L., Madhusudhana, S., & Thomas, J. A. (2022). Detection and classification methods for animal sounds. In C. Erbe & J. A. Thomas (Eds.), *Exploring Animal Behavior Through Sound: Volume 1* (pp. 141-166). Springer. [DOI](https://doi.org/10.1007/978-3-030-97540-1_8)

11. Ren, Z., Qian, K., Zhang, Z., Pandit, V., Baird, A., & Schuller, B. (2018). Deep Scalogram Representations for Acoustic Scene Classification. *IEEE/CAA Journal of Automatica Sinica, 5(3),* 662-669. [DOI](https://10.1109/JAS.2018.7511066)

12. Scarpiniti, M., Parisi, R., & Lee, Y.-C. (2024). A Scalogram-Based CNN Approach for Audio Classification in Construction Sites. *Applied Sciences, 14(1),* 90. [DOI](https://doi.org/10.3390/app14010090)

13. Steinfath, E., Palacios-Muñoz, A., Rottschäfer, J. R., Yuezak, D., & Clemens, J. (2021). Fast and accurate annotation of acoustic signals with deep neural networks. *eLife, 10,* e68837. [DOI](https://doi.org/10.7554/eLife.68837)

14. Stowell, D. (2022). Computational bioacoustics with deep learning: A review and roadmap. *PeerJ, 10,* e13152. [DOI](https://doi.org/10.7717/peerj.13152)

15. Tsalera, E., Papadakis, A., & Samarakou, M. (2021). Comparison of Pre-Trained CNNs for Audio Classification Using Transfer Learning. *Journal of Sensor and Actuator Networks, 10(72),* 1-9. [DOI](https://doi.org/10.3390/jsan10040072)

16. Willigen van der, R.F. & Zhu, Q. (2023) Building a data-driven infrastructure Learn hands on how to solve Logistics Use Cases by means of a Data Science Infrastructure Stack(DSI). *eBook* https://cursus.logistiekdigitaal.nl/course/building-a-data-driven-infrastructure






