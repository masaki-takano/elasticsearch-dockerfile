FROM elasticsearch:6.8.23

# 日本語化
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji

# ヒープサイズ
RUN echo "-Xms200m" >> /etc/elasticsearch/jvm.options
RUN echo "-Xmx200m" >> /etc/elasticsearch/jvm.options
