#!/bin/bash
DEMO_SCRIPT='/data/shell/demo1.php' #服务脚本
DEMO_LOG='/data/log/log.txt' #服务运行日志
#判断程序是否已经在运行
status_script(){
    pids=`ps aux|grep /data/shell/demo1.php|grep -v grep|awk '{print $2}'`
    if [ ${pids} ]
    then
        echo ${0}'runing'
        return 1
    else
        echo $0'not runing'
        return 2
    fi
}
 
#启动脚本，先判断脚本是否已经在运行
start_script(){
    status_script
    if [ $? -eq 1 ]
    then
        echo ${0}' already runing'
    else
        echo '启动'${0}'中...'
        nohup /usr/bin/php ${DEMO_SCRIPT}>${DEMO_LOG} &
        echo '启动完毕'
    fi
}
 
#停止脚本
stop_script(){
    status_script
    if [ $? -ne 1 ]
    then
        echo ${0}' 不是运行状态'
    else
        # do
        kill -TERM ${pid} >/dev/null 2>&1
        # done
        echo '停止完毕'
    fi
}
 
#重启脚本
reload_script(){
    stop_script
    sleep 4
    start_script
}
#入口函数
handle(){
    case $1 in
    start)
        start_script
        ;;
    stop)
        stop_script
        ;;
    status)
        status_script
        ;;
    reload)
        reload_script
        ;;
    *)
        echo 'USAGE OF THIS SERVER IS '${0} 'status|start|stop|restart';
        ;;
    esac
}
 
if [ $# -eq 1 ]
then
    handle $1
else
    echo 'USAGE OF THIS SERVER IS '${0} 'status|start|stop|restart';
fi