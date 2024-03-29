FROM rstudio/r-base:3.6-xenial


LABEL version="1.0.0"
LABEL repository="http://github.com/jimhester/r-document"
LABEL homepage="http://github.com/jimhester/r-document"
LABEL maintainer="Jim Hester"
LABEL "com.github.actions.name"="Document R"
LABEL "com.github.actions.description"="Automatically re-documents PRs on '/document' comment"
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="purple"

RUN apt-get update && apt-get install -y jq curl git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
