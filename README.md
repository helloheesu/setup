# Mac OS X
## 맥 설정
* 번잡한 바로가기 저리 가
 * 독에서 안 쓰는 어플 지우기
 * 런치패드에서 안 쓰는 어플 숨기기
* 트랙패드 설정
 * 탭해서 클릭하기
 * 세 손가락 드래그
 * 속도 조금 빠르게.
* 배터리 잔량 퍼센트 표시 : 상태바에 배터리 아이콘 - show percentage
* 시스템 설정 sound(spotlight 검색) - 이어폰 오른쪽 더 크게..

## 응용 프로그램 설치
* [크롬 설치](http://www.google.co.kr/chrome/browser/desktop/) : .dmg
  * [크롬 종료 전에 경고 표시](https://support.google.com/chrome/answer/95631?hl=ko) : 상태바에 Chrome - Warn Before Quitting(⌘Q)
* [btt 설치](http://www.bettertouchtool.net/) : 폴더 /App 에 집어넣기.
 * MaxSize 단축키 : 마우스 스냅은 default 로 돼 있고, 키보드 단축키 설정.
 * 시작할 때 항상 켜 주고.
 * 쿼터Max 는 안 쓸거고, 양 옆에서 약간은 간격을 두고 Max 면 좋겠고.
* [카카오톡 for Mac OS X 설치](http://www.kakao.com/talk/ko) : App Store 를 통해서.
 * 알람은 Sender 만 보여주고고
 * 시작할 때 켜고 로그인 해 주되 잠금모드.
* [u토렌트](http://www.utorrent.com/intl/ko/)!
 * **설치할 때 Accept 누르면 안 됨!!** 야후가 시작페이지로 바뀐다고 ㅜㅜ

## 개발 환경
* [sublime text 3](http://www.sublimetext.com/3), [package control](https://packagecontrol.io/installation)
* [nodejs 설치](http://blog.teamtreehouse.com/install-node-js-npm-mac) : `brew install node`
 * 혹시 모르니까 업그레이드 : `brew update && brew upgrade node`
 * .pkg, npm 도 같이 설치 됨.
* git 설치 : 터미널에서 `$ git`만 쳐도 xCode 어쩌고하면서 안내해준다.
* [워드프레스 설치](https://ko.wordpress.org/2014/01/01/mamp를-사용해서-내-컴퓨터에-워드프레스-설치하기/)
 * 안내에 따라 MAMP 설치
* [eclipse for PHP 설치](http://www.eclipse.org/downloads/packages/eclipse-php-developers/marsr)
 * java 필요하다고 해서 설치. : [brew 를 사용해서!](http://stackoverflow.com/questions/24342886/how-to-install-java-8-on-mac)
   * [brew](http://brew.sh/) 설치 후 ```brew tap caskroom/cask && brew install brew-cask && brew cask install java```
 * [ftp 플러그인(Remote System Explorer End-User Runtime) 설치](http://pseg.or.kr/pseg/infouse/3105)
* Virtual Box 설치
* Xubuntu (Ubuntu 에서 껍데기만 더 가벼운 버전.) 설치
  * [설치과정 참고링크 - 생활코딩](https://opentutorials.org/course/488/2601)
  * 스크린샷은 없지만 꽤. [CERNatschool 깃헙위키](https://github.com/CERNatschool/getting-started/wiki/Creating-a-Xubuntu-14.04-Virtual-Machine-with-VirtualBox)
  * 껍데기만 다른거니까 [우분투 14 설치글](http://rorlab.gitbooks.io/railsguidebook/content/appendices/ubuntu14server.html) 봐도 됨.
  * i386 / amd64
    * 간단히 말해서 i386은 32비트, amd64는 64비트 머신.
    * 32비트(i386) 설치, 가상머신 위니까 너무 빡세게(64비트) 못 돌림.
  * RAM 512MB - create virtual hard disk(VDI, dynamically allocated, 8GB)
  * 설치할 때 update skip. (기본 업데이트 서버는 느리니까, 후에 다른 서버로.)
  * guest 확장 설치 (좀 오래걸림!)
    * `Device - Insert Guest Addition CD image ...`
    * 해당 경로로 터미널에서 이동한 후, `sudo ./VBoxLinuxAdditions.run`
    * 재부팅 (`sudo reboot`)
  * 업데이트
    * 제어판 - 소프트웨어&업데이트 - 서버설정을 다음으로 - 다시읽기 말고 닫기.
    * 터미널에서 `sudo apt-get update` - 서버가 ftp.daum.net 으로 잘 나오는지 확인 - `sudo apt-get upgrade`
  * iso는 지워도 된다! (근데 왜 에러났을까나ㅜㅜ) [참고](http://askubuntu.com/questions/400413/can-i-delete-the-iso-file-after-installing-ubuntu)
  * 일반 - 고급 - 클립볻,드래그앤드롭 - 양방향 설정
  * 네트워크 - 어댑터2 - VirtualBox Host-Only
  * eth0(외부와 통신) 선택. eth1:내부통신. [참고 슬라이드쉐어,7페이지](http://www.slideshare.net/sigmadream/01-virtual-box)
  * 
* [heroku for php](https://devcenter.heroku.com/articles/getting-started-with-php#introduction) - php 는 v5.5 이미 설치 돼 있음.
 * [Composer](https://getcomposer.org/doc/00-intro.md#globally)  설치
 * heroku toolbelt 설치
* Arduino IDE, processing IDE 설치
* Xcode 설치, OpenFrameworks 설치

### 터미널 설정
* [bash_profile](/.bash_profile)
* [vimrc](/.vimrc)

# Windows 8.1
* Visual Studio 2015 RC
* Chrome
* 카카오톡
* Notepad++
* sourcetree
 * [rebase 하는 방법(for amend commit message)](http://stackoverflow.com/questions/17604232/edit-a-commit-message-in-sourcetree-windows-already-pushed-to-remote)
 * 안타깝게도 push force 는 안 된다고 한다. 터미널 눌러서 해야지 뭐.
 * 언어는 영어가 낫다. '쌍방향 배치'보다는 'rebase'가 알아듣기 쉽잖아.
