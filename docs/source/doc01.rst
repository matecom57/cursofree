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



