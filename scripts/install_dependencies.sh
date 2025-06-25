version: 0.0
os: linux
files:
  - source: /
    destination: /home/ubuntu/app

hooks:
  BeforeInstall:
    - location: scripts/cleanup.sh
      runas: ubuntu
  AfterInstall:
    - location: scripts/install_dependencies.sh
      runas: ubuntu
  ApplicationStart:
    - location: scripts/start_app.sh
      runas: ubuntu
