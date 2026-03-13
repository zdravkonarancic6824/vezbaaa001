FROM gcc:latest
WORKDIR /app
# Kopiramo tvoj test.c u kontejner
COPY test.c .
# Kompajliramo ga
RUN gcc test.c -o moj_program
# Pokrećemo ga kada se kontejner upali
CMD ["./moj_program"]
