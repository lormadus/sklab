


## k8s 클러스터 생성 스크립트 다운로드
```
wget https://raw.githubusercontent.com/lormadus/sktlab/master/Day6/demo-script.sh
```

## 파일 권한 수정
```
chmod 755 demo-script.sh
```

## sk-dev-cluster.yaml 파일 다운로드
```
wget https://raw.githubusercontent.com/lormadus/sktlab/master/Day6/create-cluster.yaml
```

## 워커노드 추가하기
1) 최대 노드 수 업데이트
```
eksctl scale nodegroup --nodes-max=3 --cluster=user30-k8s-cluster --name=node-group
```
2) 실행할 워커노드 지정
```
eksctl scale nodegroup --cluster=user30-k8s-cluster --nodes=2 --name=node-group
```
