
<img align="right" width="200" height="200" src="https://avatars.githubusercontent.com/u/115706761?s=400&u=7c6cae892816e172b0b7eef99f2d32adb948c6ad&v=4">

## Acoustic Monitoring of Bat sounds

The study of classyfing animal sounds occuring in their natural environment is called bioacoustics. Animal vocalisations and natural soundscapes are fascinating objects of study, and contain valuable evidence about animal behaviours, populations and ecosystems.

Understanding bat populations and behavior is crucial for their conservation, but these nocturnal creatures are difficult to study directly. Their speed, nighttime activity, and preferred habitats make traditional observation methods impractical. Thankfully, bats use ultrasonic sounds for navigation, making acoustic monitoring a powerful tool for bat research.
 
Thus, classification of the acoustic repertoires of bats into sound types is a useful tool for taxonomic studies, behavioral studies, and for documenting their occurrence.

<!--
![image](https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/assets/684692/e2ad7597-484b-40d3-b02e-15ca445b0a9b)
-->

## Scalogram-Based Deep Learning Approach 

In the exciting new world of Artificial Intelligence (AI), deep learing-based computer vision (CV) lets computers "see" and classify images. But what if could applied CV to "hear"  and classify sounds? 

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

Motivated by the above stated considerations, we propose a new approach for the
automatic monitoring of bats sounds by developing a Computer Vision-driven Deep Learning Approach for Audio Classification of bats sound scalograms.

## Dataset

Initially, --- to provide a Proof-of-Concept  (PoC)--- we will start using the  [ChiroVox website](https://www.chirovox.org/stat.php), the home of bat recordings from all over the world. The site is intended to facilitate work with bat sounds and is based on the Asian Bat Call Database, an initiative of the Hungarian Natural History Museum (HNHM) and the Southeast Asian Bat Conservation Research Unit (SEABCRU). 

<pre>
Matlab code is provided here that allows you to locally download all avaiable bat sound audio-files that are contained in the ChiroVox database.
<a href="https://github.com/HR-DATA-FABRIC/CLASSIFYING_ANIMAL_SOUNDS-with-MACHINE_LEARNING/blob/main/Code/DownLoad_Locally_ChiroVOX_Species_wav_filesMatlab_code_example.m">DownLoad_Locally_ChiroVOX_Species_wav_filesMatlab_code_example.m</a>
</pre>



In addition,  we will use recodinglist database from the [Xeno-canto Foundation](https://xeno-canto.org/collection/). It is a [citizen science project](https://en.wikipedia.org/wiki/Xeno-canto) and repository in which volunteers record, upload and annotate recordings of bird calls and sounds of orthoptera and bats from Europe, including the Netherlands. It is sponsed by [Naturalis Biodiversity Center](https://www.naturalis.nl/).

In a later phase we will add bat sound recordings from [species](https://www.vleermuis.net/329-geluiden/215-vleermuisgeluiden) that naturally occure in the Netherlands. These recordings will be made available through (DataverseNL)[https://dataverse.nl/] under a creative commons zero license [(CC0)](https://creativecommons.org/public-domain/cc0/).


## Research Approach: Transfer Leanring

We aim to develop a Audio Classification Model dedicated to bat sound analysis using a transfer learning approach with scalogram images as input data.





