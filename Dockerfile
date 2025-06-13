FROM openjdk:17-slim

RUN apt-get update && apt-get install -y \
    git curl unzip fonts-noto fonts-noto-cjk fonts-noto-mono fontconfig \
    ca-certificates gnupg nodejs npm \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN git clone https://github.com/Stirling-Tools/Stirling-PDF.git

WORKDIR /opt/Stirling-PDF
RUN npm install
RUN ./gradlew shadowJar

WORKDIR /opt/Stirling-PDF/build/libs
CMD ["java", "-Xms512m", "-Xmx2g", "-XX:CompressedClassSpaceSize=128m", "-jar", "StirlingPDF-all.jar"]