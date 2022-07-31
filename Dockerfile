FROM tipthon/tipthonar:alpine

#clonning repo 
RUN git clone https://github.com/tipthon/tipthonar/tree/master.git /root/tpthon
#working directory 
WORKDIR /root/tpthon

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/tpthon/bin:$PATH"

CMD ["python3","-m","tpthon"]
