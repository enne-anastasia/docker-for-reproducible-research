# Docker for reproducible research

This is a supporting repository for my talk on using Docker for reproducible 
research in Theoretical Biology group at Uni Beielefeld.
The slides for the talk are available here in `docs/docker_slides.pdf`.
They are build using Rmarkdown and LaTeX beamer.

If you are already familiar with Docker, you can build and run the Docker container
that produces the slides with the following commands:

```
sudo docker build -t dore ./
```

```
sudo docker run -v $(pwd)/figures:/docker_reproducibility/figures -v $(pwd)/docs:/docker_reproducibility/docs dore
```