#FOR ALL STEPS, MAKE SURE TO INCLUDE THE ARGUMENT --prefix WHICH IS THE ROOT OF YOUR DATASET PATH
#The code also makes an assumption: That each of the datasets is preprocessed so that one of the directories in the path is the label name, specifically 3 tokens away from the end (the individual sample filename)
#Also choose a dataset name with --dataset to make use of the preset lists of train/test sets.

#Training Step 1
python src/run.py --arch 'OC,c_128_1_1,rc0_128-128_1-1_1-1_1-1_1-1,gp_0,c_256_1_1,rc0_256-256_1-1_1-1_1-1_1-1,gp_1,c_512_1_1,rc0_512-512_1-1_1-1_1-1_1-1,gp_2,c_1024_1_1,rc0_1024-1024_1-1_1-1_1-1_1-1,gp_3,fc_2048_1_1,fc_421_0_0' --feature_type 1 --group_name 'WACV2018' --trial_name 'train_step_1' --debug_flag 0 --iterations_per_test 50 --l2=0.00000 --num_iter 89850 --train_batch_size 50 --test_batch_size 50 --num_vertices 516 --learning_rate_step 30000 --optimizer 'momentum' --pool_ratios '0.5_0.5_0.5_0.5' --num_classes 421 --starter_learning_rate 0.01 --prefix '[ROOT DIRECTORY OF DATASET]' --dataset 'modelnetfull'

#Training Step 2
#python src/run.py --arch 'OC,c_128_1_1,rc0_128-128_1-1_1-1_1-1_1-1,gp_0,c_256_1_1,rc0_256-256_1-1_1-1_1-1_1-1,gp_1,c_512_1_1,rc0_512-512_1-1_1-1_1-1_1-1,gp_2,c_1024_1_1,rc0_1024-1024_1-1_1-1_1-1_1-1,gp_3,fc_2048_1_1,fc_55_0_0' --feature_type 1 --group_name 'WACV2018' --trial_name 'G3DNet18' --debug_flag 0 --iterations_per_test 50 --l2=0.00000 --num_iter 120000 --train_batch_size 50 --test_batch_size 50 --num_vertices 516 --learning_rate_step 60000 --optimizer 'momentum' --pool_ratios '0.5_0.5_0.5_0.5' --num_classes 55 --starter_learning_rate 0.001 --prefix '[ROOT DIRECTORY OF DATASET]' --dataset 'shapenetcore' --loading_weights_flag 1 --arch_loading 'OC,c_128_1_1,rc0_128-128_1-1_1-1_1-1_1-1,gp_0,c_256_1_1,rc0_256-256_1-1_1-1_1-1_1-1,gp_1,c_512_1_1,rc0_512-512_1-1_1-1_1-1_1-1,gp_2,c_1024_1_1,rc0_1024-1024_1-1_1-1_1-1_1-1,gp_3,fc_2048_1_1' --path_pretrained_weights '[PATH AND ITERATION OF TRAINED MODEL]'

#Training Step 3
#python src/run.py --arch 'OC,c_128_1_1,rc0_128-128_1-1_1-1_1-1_1-1,gp_0,c_256_1_1,rc0_256-256_1-1_1-1_1-1_1-1,gp_1,c_512_1_1,rc0_512-512_1-1_1-1_1-1_1-1,gp_2,c_1024_1_1,rc0_1024-1024_1-1_1-1_1-1_1-1,gp_3,c_1024_1_1,rc0_1024-1024_1-1_1-1_1-1_1-1,gp_4,c_2048_1_1,rc0_2048-2048_1-1_1-1_1-1_1-1,gp_5,fc_4096_1_1,fc_55_0_0' --feature_type 1 --group_name 'WACV2018' --trial_name 'G3DNet26' --debug_flag 0 --iterations_per_test 50 --l2=0.00000 --num_iter 120000 --train_batch_size 50 --test_batch_size 50 --num_vertices 516 --learning_rate_step 50000 --optimizer 'momentum' --pool_ratios '0.5_0.5_0.5_0.5_0.5_0.5' --num_classes 55 --starter_learning_rate 0.001  --prefix '[ROOT DIRECTORY OF DATASET]' --dataset 'shapenetcore' --loading_weights_flag 1 --arch_loading 'OC,c_128_1_1,rc0_128-128_1-1_1-1_1-1_1-1,gp_0,c_256_1_1,rc0_256-256_1-1_1-1_1-1_1-1,gp_1,c_512_1_1,rc0_512-512_1-1_1-1_1-1_1-1,gp_2,c_1024_1_1,rc0_1024-1024_1-1_1-1_1-1_1-1,gp_3' --path_pretrained_weights '[PATH AND ITERATION OF TRAINED MODEL]'

#Run G3DNET18 Pretrained
#python src/run.py --arch 'OC,c_128_1_1,rc0_128-128_1-1_1-1_1-1_1-1,gp_0,c_256_1_1,rc0_256-256_1-1_1-1_1-1_1-1,gp_1,c_512_1_1,rc0_512-512_1-1_1-1_1-1_1-1,gp_2,c_1024_1_1,rc0_1024-1024_1-1_1-1_1-1_1-1,gp_3,fc_2048_1_1,fc_55_0_0' --feature_type 1 --group_name 'WACV2018' --trial_name 'G3DNet18' --debug_flag 0 --iterations_per_test 50 --l2=0.00000 --num_iter 120000 --train_batch_size 50 --test_batch_size 50 --num_vertices 516 --learning_rate_step 60000 --optimizer 'momentum' --pool_ratios '0.5_0.5_0.5_0.5' --num_classes 55 --starter_learning_rate 0.001 --train_flag 0 --dataset '[DATASET NAME]' --prefix '[ROOT DIRECTORY OF DATASET]'

#Run G3DNET26 Pretrained
#python src/run.py --arch 'OC,c_128_1_1,rc0_128-128_1-1_1-1_1-1_1-1,gp_0,c_256_1_1,rc0_256-256_1-1_1-1_1-1_1-1,gp_1,c_512_1_1,rc0_512-512_1-1_1-1_1-1_1-1,gp_2,c_1024_1_1,rc0_1024-1024_1-1_1-1_1-1_1-1,gp_3,c_1024_1_1,rc0_1024-1024_1-1_1-1_1-1_1-1,gp_4,c_2048_1_1,rc0_2048-2048_1-1_1-1_1-1_1-1,gp_5,fc_4096_1_1,fc_55_0_0' --feature_type 1 --group_name 'WACV2018' --trial_name 'G3DNet26' --debug_flag 0 --iterations_per_test 50 --l2=0.00000 --num_iter 120000 --train_batch_size 50 --test_batch_size 50 --num_vertices 516 --learning_rate_step 50000 --optimizer 'momentum' --pool_ratios '0.5_0.5_0.5_0.5_0.5_0.5' --num_classes 55 --starter_learning_rate 0.001 --train_flag 0  --dataset '[DATASET NAME]' --prefix '[ROOT DIRECTORY OF DATASET]'