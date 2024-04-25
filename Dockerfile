FROM archlinux:latest
LABEL Description="Build environment"

ENV HOME /root

SHELL ["/bin/bash", "-c"]

RUN pacman -Syu --noconfirm
# && pacman -S --noconfirm clang llvm cmake qt6-base vulkan-devel glfw3 glslang glm gtest make git vulkan-icd-loader vulkan-swrast xorg-server-xvfb
RUN pacman -S --noconfirm clang
RUN pacman -S --noconfirm llvm
RUN pacman -S --noconfirm cmake
RUN pacman -S --noconfirm qt6-base
RUN pacman -S --noconfirm vulkan-devel
RUN pacman -S --noconfirm glfw3
RUN pacman -S --noconfirm glslang
RUN pacman -S --noconfirm glm
RUN pacman -S --noconfirm gtest
RUN pacman -S --noconfirm make
RUN pacman -S --noconfirm git
RUN pacman -S --noconfirm vulkan-icd-loader
RUN pacman -S --noconfirm vulkan-swrast
RUN pacman -S --noconfirm xorg-server-xvfb
#RUN echo LIBGL_ALWAYS_SOFTWARE=true >> /etc/environment
#RUN echo GALLIUM_DRIVER=llvmpipe >> /etc/environment

COPY DockerEntrypoint.sh /entrypoint.sh
#COPY 10-headless.conf /etc/X11/xorg.conf.d/10-headless.conf

ENTRYPOINT ["/entrypoint.sh"]