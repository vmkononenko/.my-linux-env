MLE_PATH=$(dirname ${BASH_SOURCE[0]:-${(%):-%x}})
MLE_CONFIG=${MLE_PATH}/config.ini
MLE_MODULES_PATH=${MLE_PATH}/modules


function load_config() {
    source <(grep = ${MLE_CONFIG} | sed 's/ *= */=/g')
}


function load_modules() {
    ls ${MLE_MODULES_PATH} | while read module; do
        eval enabled="\${$module}"
        [ ${enabled} -eq 1 ] && {
             shellrc=${MLE_MODULES_PATH}/${module}/shellrc
             if [ -s ${shellrc} ]; then
                 source ${shellrc}
             fi
        }
    done
}

load_config
load_modules
