
cd ~/Downloads/eeglab/eeglab2021.1/
eeglab

cd ../../anteep/ANTeepimport1.13/

eegd = pop_epoch(pop_loadeep_v4('data/latency_test_without_docker.cnt'))

x = deeg.data(65,:,:)
save('ohnedocker.mat', 'x')

eegd = pop_epoch(pop_loadeep_v4('data/manylabs_latencytest.cnt'))

x = deeg.data(65,:,:)
save('ohnedocker.mat', 'x')
