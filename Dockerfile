FROM golang:1.20.4-bullseye

RUN apt update
RUN apt install curl -y
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash -
RUN apt install nodejs -y
RUN apt install libgtk-3-dev -y
RUN apt install libwebkit2gtk-4.0-dev -y
RUN go install github.com/wailsapp/wails/v2/cmd/wails@latest
