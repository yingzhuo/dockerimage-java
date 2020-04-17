timestamp := $(shell /bin/date "+%F %T")

no_default:
	@echo "no defualt target"

github:
	@git add .
	@git commit -m "$(timestamp)"
	@git push

build:
	@docker image build -t registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jdk-8 $(CURDIR)/jdk/8
	@docker image build -t registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jdk-11 $(CURDIR)/jdk/11
	@docker image build -t registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jre-8 $(CURDIR)/jre/8
	@docker image build -t registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jre-11 $(CURDIR)/jre/11

release: build
	@docker login --username=yingzhor@gmail.com --password="${ALIYUN_PASSWORD}" registry.cn-shanghai.aliyuncs.com &> /dev/null
	@docker image push registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jdk-8
	@docker image push registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jdk-11
	@docker image push registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jre-8
	@docker image push registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jre-11
	@docker logout &> /dev/null

clean:
	@docker image rm registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jdk-8 &> /dev/null
	@docker image rm registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jdk-11 &> /dev/null
	@docker image rm registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jre-8 &> /dev/null
	@docker image rm registry.cn-shanghai.aliyuncs.com/yingzhuo/java:jre-11 &> /dev/null

.PHONY: no_default github build release clean