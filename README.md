## Índice

- [Pré-requisitos](#pré-requisitos)
- [Instalação](#instalação)
- [Configuração do ArgoCD](#configuração-do-argocd)
- [Kubernetes com Kind](#kubernetes-com-kind)
- [Docker com serviço em Go](#docker-com-serviço-em-go)
- [Como Usar](#como-usar)
- [Contribuição](#contribuição)
- [Licença](#licença)

## Pré-requisitos

Certifique-se de ter instalado:

- [Docker](https://www.docker.com/get-started)
- [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/)
- [ArgoCD](https://argoproj.github.io/argo-cd/getting_started/)
- [Go](https://golang.org/doc/install)

## Instalação

Clone o repositório:

```bash
git clone https://github.com/Leonardomdeoli/gitops.git
cd gitops
````

## Configuração do ArgoCD

1. **Instalar ArgoCD CLI:**
   - Certifique-se de ter o [ArgoCD CLI](https://argoproj.github.io/argo-cd/cli_installation/) instalado.

2. **Acessar o Dashboard do ArgoCD:**
   - Inicie o servidor ArgoCD e acesse o painel de controle através do navegador.
     ```bash
     kubectl port-forward svc/argocd-server -n argocd 8080:443
     ```
     Acesse [https://localhost:8080](https://localhost:8080) no navegador com as credenciais padrão (`admin`).

3. **Login no CLI ArgoCD:**
   - Obter a senha do login no CLI do ArgoCD usando o comando:
     ```bash
     argocd admin initial-password -n argocd
     ```

![Alt text](images/img.png?raw=true "Title")