1. sudo groupadd aluno
   sudo groupadd professor
   sudo groupadd gerente

2. sudo mkdir -p /srv
   sudo chown root:gerente /srv

3. sudo mkdir -p /srv/alunos
   sudo mkdir -p /srv/professores

   sudo chown root:aluno /srv/alunos
   sudo chown root:professor /srv/professores

4. sudo chown root:gerente /srv
   sudo chmod 755 /srv

   sudo chown root:aluno /srv/alunos
   sudo chmod 770 /srv/alunos

   sudo chown root:professor /srv/professores
   sudo chmod 770 /srv/professores

5. sudo useradd -g professor -m bruno
   sudo mkdir -p /srv/professores/bruno
   sudo mv /home/bruno /srv/professores/bruno
   sudo usermod -d /srv/professores/bruno bruno
   sudo chown bruno:professor /srv/professores/bruno
sudo chmod 700 /srv/professores/bruno

6. sudo usermod -aG gerente bruno

7. sudo useradd -g aluno -m -d /srv/alunos/joaozinho --gecos "" --disabled-login joaozinho
   sudo useradd -g aluno -m -d /srv/alunos/mariazinha --gecos "" --disabled-login mariazinha

   sudo chown joaozinho:aluno /srv/alunos/joaozinho
   sudo chmod 700 /srv/alunos/joaozinho

   sudo chown mariazinha:aluno /srv/alunos/mariazinha
   sudo chmod 700 /srv/alunos/mariazinha

8. sudo chage -E 2024-12-31 joao
   sudo chage -E 2024-12-31 maria




