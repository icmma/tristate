If you have OG EON that has tri-state physical buttons, You can have 3 branches overall however if you the new LEON(EON GOLD) then you will need UI button to switch between each branches. The only brach that has UI button for tri-state is in https://github.com/BogGyver/openpilot  that's for now i will add simple branch where the UI button will can be imported into any regular branch in general that being said first thing you have to do is modify the continue.sh which is located at:

> /data/data/com.termux/files/

Following is link for the modified version of continue.sh
https://raw.githubusercontent.com/icmma/tristate/master/continue.sh

After you have modified the continue.sh, Please reboot your EON than you will see just black screen which is not an issue since you haven't installed OP yet for tri-state buttons. Following is script i have built for your intial setup for 3 branches example:

> cd /data && rm -rf openpilot* && rm -rf openpilot.1* && rm -rf openpilot.2* && rm -rf openpilot.3* && git clone https://github.com/icmma/openpilot openpilot.1 && cd /data/openpilot.1 && git checkout icmma_feed_OG && cd /data && git clone https://github.com/kegman/openpilot openpilot.2 && cd /data/openpilot.2 && git checkout kegman-plusGernbySteering && cd /data  && git clone https://github.com/priuscom/openpilot openpilot.3 && cd /data/openpilot.3 && git checkout FLag && reboot

Please modify each fork username and branch name in general:

Following script if you want to modify tri-state button 1:

> cd /data && rm -rf openpilot.1* && git clone https://github.com/icmma/openpilot openpilot.1 && cd /data/openpilot.1 && git checkout branchname && reboot

Following script if you want to modify tri-state button 2:

> cd /data && rm -rf openpilot.2* && git clone https://github.com/icmma/openpilot openpilot.2 && cd /data/openpilot.2 && git checkout branchname && reboot

Following script if you want to modify tri-state button 3:

> cd /data && rm -rf openpilot.3* && git clone https://github.com/icmma/openpilot openpilot.3 && cd /data/openpilot.3 && git checkout branchname && reboot



