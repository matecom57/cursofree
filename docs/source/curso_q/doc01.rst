doc01
=====

free-data.sh

..  code:: Bash

   #!/bin/bash

   export SUBJECTS_DIR=./tutorial_data_20190918_1558/buckner_data/tutorial_subjs/
   cd $SUBJECTS_DIR

free.sh

.. code:: Bash

   export FREESURFER_HOME=/usr/local/freesurfer/7.4.1
   source $FREESURFER_HOME/SetUpFreeSurfer.sh

.. code:: Bash

fsl1.sh

.. code:: Bash

   # FSL Setup
   FSLDIR=/usr/local/fsl
   PATH=${FSLDIR}/share/fsl/bin:${PATH}
   export FSLDIR PATH
   . ${FSLDIR}/etc/fslconf/fsl.sh

Viewing_Volumes.sh

.. code:: Bash

   #!/bin/bash

   freeview -v \
   good_output/mri/T1.mgz \
   good_output/mri/wm.mgz \
   good_output/mri/brainmask.mgz \
   good_output/mri/aseg.mgz:colormap=lut:opacity=0.2 \
   -f good_output/surf/lh.white:edgecolor=blue \
   good_output/surf/lh.pial:edgecolor=red \
   good_output/surf/rh.white:edgecolor=blue \
   good_output/surf/rh.pial:edgecolor=red


free_tutorial.sh

.. code:: Bash

   #!/bin/bash

   export TUTORIAL_DATA=tutorial_data_20190918_1558
   export SUBJECTS_DIR=$TUTORIAL_DATA/buckner_data/tutorial_subjs

   cp Viewing_Volumes.sh ./$SUBJECTS_DIR/.

   cd $SUBJECTS_DIR

   ./Viewing_Volumes.sh

Using the Recon-all command

https://andysbrainbook.readthedocs.io/en/latest/FreeSurfer/FS_ShortCourse/FS_03_ReconAll.html

https://openneuro.org/datasets/ds000174/versions/1.0.1/download

 If you are in the Cannabis directory, navigate to sub-101’s anatomical directory by typing cd sub-101/ses-BL/anat. You can then run recon-all with the following command:

.. code:: Bash

   recon-all -s sub-101 -i sub-101_ses-BL_T1w.nii.gz -all

**AFNI**

https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/steps_linux_ubuntu22.html

https://andysbrainbook.readthedocs.io/en/latest/AFNI/AFNI_Overview.html


paso1

.. code:: Bash

   #!/bin/bash

   mkdir afni

   cd afni

   curl -O https://raw.githubusercontent.com/afni/afni/master/src/other_builds/OS_notes.linux_ubuntu_22_64_a_admin.txt
   curl -O https://raw.githubusercontent.com/afni/afni/master/src/other_builds/OS_notes.linux_ubuntu_22_64_b_user.tcsh
   curl -O https://raw.githubusercontent.com/afni/afni/master/src/other_builds/OS_notes.linux_ubuntu_22_64_c_nice.tcsh


paso2

.. code:: Bash

   #!/bin/bash

   sudo bash OS_notes.linux_ubuntu_22_64_a_admin.txt 2>&1 | tee o.ubuntu_22_a.txt
   tcsh OS_notes.linux_ubuntu_22_64_b_user.tcsh 2>&1 | tee o.ubuntu_22_b.txt
   tcsh OS_notes.linux_ubuntu_22_64_c_nice.tcsh 2>&1 | tee o.ubuntu_22_c.txt

