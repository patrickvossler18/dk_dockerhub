FROM patrickvossler/pytorch-dk

# Set the default command to python3
CMD ["python3"]

WORKDIR /home/user

# RUN git clone https://pvossler@bitbucket.org/msesia/deepknockoffs.git
RUN git clone https://github.com/patrickvossler18/dk_fork.git
WORKDIR /home/user/dk_fork/DeepKnockoffs/
#RUN python3 /home/user/dk_fork/DeepKnockoffs/setup.py install --user
RUN python3 /home/user/dk_fork/DeepKnockoffs/setup.py install --user

