
cd ~/Downloads/eeglab/eeglab2021.1/
eeglab

cd ../../anteep/ANTeepimport1.13/

eegd = pop_loadeep_v4('/home/pbr-student/eegmanylabs/eegml_1000.cnt')
eegd = pop_epoch(eegd, {'99'}, [-.2 .2], 'epochinfo', 'yes')
%plot(eegd.times, mean(eegd.data(65,:,:), 3))

x = eegd.data(65,:,:)
save('/home/pbr-student/psychomnipy/data/innerhalbdocker1000.mat', 'x')

eegd = pop_loadeep_v4('/home/pbr-student/eegmanylabs/eegml_withDocker_1000.cnt')
eegd = pop_epoch(eegd, {'99'}, [-.2 .2], 'epochinfo', 'yes')
%plot(eegd.times, mean(eegd.data(65,:,:), 3))

x = eegd.data(65,:,:)
save('/home/pbr-student/psychomnipy/data/ohnedocker1000.mat', 'x')
