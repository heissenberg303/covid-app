# Covid-19 stats summarize

> /covid/summary API will count total number of covid cases by each provinces and age range group such as '0-30, 31-60, 61+, or NA'.
## Requirement
- Must use Go, Go module, and Gin framework
- Create a JSON API at /covid/summary endpoint
- Count number of cases by provinces and age group

## How to run
### Use Docker
1. ```docker build -t covid .```
2. ```docker run -it --rm covid```
3. ```docker exec -it <mycontainer> bash```

### Sample curl
> ```curl 'localhost:8080/covid/summary'```