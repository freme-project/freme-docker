#
# Copyright (C) 2015 Agro-Know, Deutsches Forschungszentrum für Künstliche Intelligenz, iMinds,
# Institut für Angewandte Informatik e. V. an der Universität Leipzig,
# Istituto Superiore Mario Boella, Tilde, Vistatec, WRIPL (http://freme-project.eu)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
SCRIPT=$(readlink -f "$0")
BASEDIR=$(dirname "$SCRIPT")
cd $BASEDIR"/.."

if [ -a config/start-properties ]
  then
        source config/start-properties
fi

nohup java -cp "./*:config" $START_ARGS org.springframework.boot.loader.JarLauncher > /dev/null 2>&1 &
echo $! > config/pid.txt
process_with_pid_is_running=0
if [ -f config/pid.txt ]
then
    pid=$( cat config/pid.txt )
    for i in {0..200..1}
            do

        if ps -p $pid > /dev/null
        then
        process_with_pid_is_running=1
        break
        fi
        sleep 0.1
    done
fi

if [ $process_with_pid_is_running -eq 1 ]
    then
    echo "Started FREME"
else
    echo "FREME failed to start. Please check logs."
fi

