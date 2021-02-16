VERSION ?= $(shell bash -c 'read -s -p "Version: " version; echo $$version')

.PHONY: help build push run status helm lint delete

build:
	@docker build . -t myk8:32000/myapp:$(VERSION)
push:
	@docker push myk8:32000/myapp:$(VERSION)
run:
	@microk8s kubectl apply -f myapp-deployment-service.yaml
status:
	@microk8s kubectl get all | grep myapp
helm:
	helm install --kubeconfig=../myk8config myappchart ./myappchart
lint:
	helm lint --kubeconfig=../myk8config ./myappchart
delete:
	helm uninstall --kubeconfig=../myk8config myappchart

