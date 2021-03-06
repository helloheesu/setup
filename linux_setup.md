* 참고 : 아래에 `sudo`는 종종 빼 먹고 씀. 에러나면 sudo 추가도 고려해볼 것.

# git 설치
* `$ apt-get install git`

# ssh로 원격 접속할 수 있도록 허용
* sshd 설치 : [`$ apt-get install openssh-server`](http://zetawiki.com/wiki/우분투_sshd_설치/)
* 허용 IP 대역 : [`/etc/hosts.allow`, `/etc/hosts.deny` 파일 편집](http://blog.pincoin.co.kr/2012/12/23/특정-ip-또는-ip-대역만-ssh-접속-허용/)([ip '대역'에 대해 설정](http://zetawiki.com/wiki/특정_IP만_SSH_접속_허용하/기)하고 싶다면 그 범위까지만 적어주면 됨) 후 `$ sudo service ssh restart`

# jdk 설치
* [oracle installer 로 jdk 8 설치하기](http://tecadmin.net/install-oracle-java-8-jdk-8-ubuntu-via-ppa/#)
  * `sudo: add-apt-repository: command not found` 에러 : [`$ sudo apt-get install software-properties-common`, (12버전은 `sudo apt-get install python-software-properties`도 해야 함.)](http://askubuntu.com/questions/593433/error-sudo-add-apt-repository-command-not-found)
  * 이렇게 하면 환경변수 설정 등 필요없음! ^^
* 혹은 .tar.gz 파일을 공식 oracle 페이지에서 직접 다운받아서도 할 수는 있음.
  * `$ uname -a`으로 버전 확인 : `x86_64` - 64bit.
  * oracle 에서 `jdk 8 .tar.gz` for linux 64-bit(위에서 확인한 버전) 다운로드
  * [`scp`](https://www.garron.me/en/articles/scp.html)로 원격서버에 업로드
  * [환경변수 설정](http://luckyyowu.tistory.com/122)

# mysql 설치
* `$ sudo apt-get install mysql-server`, 앞으로 사용할 mysql의 root 비밀번호 물어보므로 주의.
* charset utf8 (한글 깨짐 방지/해결) : [`/etc/mysql/my.cnf` 편집](http://mirwebma.tistory.com/5) 후 `$ sudo service mysql restart`

# 클라우드 가상서버를 받았다
* ubuntu 12 -> 14 업그레이드 : 로그인하자마자 버전이 새로 나왔으니 업그레이드 하라고. 알려주는 대로 `$ do-release-upgrade`.
  * 업그레이드 하다가 어떤 창이 나오면서 [`PermitRootLogin`](http://askubuntu.com/questions/449364/what-does-without-password-mean-in-sshd-config-file) 어쩌고 하면 일단 no. ssh 접속 못 할 수도 있으니까 ㅜㅜ
  * package has moved.. 버전이 바뀜에 따라 파일들 경로가 바뀐 건, 패키지 관리자가 하는 대로 따라가기 : `Y`.
* 하다가 컴퓨터 전원 나감 ㅜㅜ 바뀐 파일 경로가 아직 반영 안 된 게 있음. 그래서 `$ sudo apt-get update` 부터 에러.
  1. `Could not get lock /var/lib/apt/lists/lock - open` : [`$ sudo rm /var/lib/apt/lists/* -vf`](http://ubuntuforums.org/showthread.php?t=1986288)
  2. `E: Could not get lock /var/lib/dpkg/lock - open (11 Resource temporarily unavailable)   E: Unable to lock the administration directory (/var/lib/dpkg/) is another process using it?`
    * [ubuntuform의 글](http://ubuntuforums.org/showthread.php?t=1858466)에 matt_symes 의 답변 따라가기.
      * `$ sudo lsof /var/lib/dpkg/lock` 로 lock 을 걸고있는 `PID`(예: 12345) 확인
      * `$ sudo kill -TERM 12345`(12345는 위에서 확인한 PID)
    * [그래도 안 되길래 더 검색.](http://www.blackmoreops.com/2015/08/17/fixing-e-could-not-get-lock-varlibdpkglock-open-11-resource-temporarily-unavailable-error/)
      * `$ rm /var/lib/dpkg/lock` 하고 나니까 `$ sudo apt-get update` 성공!
* root 비밀번호 변경도 했음 : `sudo passwd root`
* `sudo: unable to resolve host hostname`(hostname은 다름) : [`/etc/hosts` 편집](http://askubuntu.com/questions/59458/error-message-when-i-run-sudo-unable-to-resolve-host-none)
* [`locale: Cannot set LC_CTYPE to default locale: No such file or directory`](http://askubuntu.com/questions/162391/how-do-i-fix-my-locale-issue)
