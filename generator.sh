read -p "Enter project name: " project_name
while [[ -z "$project_name" ]]; do
  echo "project name is mandatory"
  read -p "Enter project name: " project_name
done
read -p "Enter business objects: " buss_objects
buss_obj_array=()
read -a buss_obj_array <<< $buss_objects
mkdir -p $project_name/{cmd/$project_name,configs,internal,pkg/database/migrations,test,docs}
cd $project_name
go mod init $project_name
cd cmd/$project_name && touch main.go && cd -
cd configs && touch config.yaml && cd -
cd pkg/database && touch db.go && cd -
cd docs && touch swagger.yaml && cd -
cd internal && mkdir -p {api/v1,service,repository,model,middleware,util,config}
cd config && touch config.go env.go && cd -
cd api/v1 && for buss_obj_sin in ${buss_obj_array[@]}; do touch $buss_obj_sin.go ; done && cd -
cd model && for buss_obj_sin in ${buss_obj_array[@]}; do touch $buss_obj_sin.go ; done && cd -
cd service && for buss_obj_sin in ${buss_obj_array[@]}; do touch "${buss_obj_sin}_service.go"; done && cd -
cd repository && for buss_obj_sin in ${buss_obj_array[@]}; do touch "${buss_obj_sin}_repo.go"; done && cd -
