FROM patrickvossler/pytorch-dk

# Set the default command to python3
CMD ["python3"]

WORKDIR /home/user

# RUN git clone https://pvossler@bitbucket.org/msesia/deepknockoffs.git
RUN git clone https://github.com/patrickvossler18/dk_fork.git
WORKDIR /home/user/dk_fork/DeepKnockoffs/
#RUN python3 /home/user/dk_fork/DeepKnockoffs/setup.py install --user
RUN python3 /home/user/dk_fork/DeepKnockoffs/setup.py install --user

# Add credentials on build
ARG SSH_PRIVATE_KEY
RUN mkdir /root/.ssh/
# remember to use a temporary variable for this
# This private key shouldn't be saved in env files
RUN echo "${SSH_PRIVATE_KEY}" >> /root/.ssh/id_rsa && chmod 600 /root/.ssh/id_rsa

RUN git clone git@github.com:patrickvossler18/ts_comp.git
#RUN git clone git@github.com:derenski/viral_host_project.git


