# Docker for reproducible research
Slides for my talk in Theoretical Biology group at Uni Beielefeld

```
sudo docker build -t dore ./
```

```
sudo docker run -v $(pwd)/figures:/docker_reproducibility/figures -v $(pwd)/docs:/docker_reproducibility/docs dore
```