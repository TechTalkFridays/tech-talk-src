# dead-simple helm chart

## Configuration

```yaml
name: Name of the deployment
image: Image and tag of dead-simple to use
exposedHost: Name of the external url that should be configured in ingress
replicas: Number of pods to run
resources: CPU and MEM requests/limits
```

## Deployment
 
```bash
kubectl create namespace production
helm install dead-simple-production ./ --namespace production  -f helm_vars/production/values.yaml
```
