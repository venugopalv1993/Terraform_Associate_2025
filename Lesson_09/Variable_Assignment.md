# Variables in terraform can be assigned 4 diffrent ways

1. Variable form variable.tf
2. Variable from tf.vars file. this is for diffrenet env, prod int and dev
3. Varaible from cmd line - incase if the variables are not defines in files
4. Variable from environment - windoes - TF_VARS_instance_type - TF_VARS_variablename
5. Variable from environment - linux - export TF_VARS_instance_type = 't2.micro'
6. Preference
    1. Environement - Priority -1
    2. tf.vars - Priority -2
    3. variale from cmd - priority - 3
