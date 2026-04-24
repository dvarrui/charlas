
## 8. Ejemplo real: monitor

```
test/
├── settings.rb
├── dockerprojects.rb
└── start.rb
```

* [Ver ficheros](../src/test/)

### 8.1 Ejecutar

```bash
$ teuton test/

------------------------------------
Started at 2026-04-24 14:35:56 +0100
...F
Finished in 0.312 seconds
------------------------------------

CASE RESULTS
+------+-----------+-------+-------+
| CASE | MEMBERS   | GRADE | STATE |
| 01   | anonymous | 75.0  |       |
+------+-----------+-------+-------+
```

### 8.2 Informe de salida

```
CONFIGURATION
+-------------+-----------+
| tt_members  | anonymous |
| tt_sequence | false     |
| tt_skip     | false     |
| tt_testname | test      |
+-------------+-----------+


GROUPS
- Docker Projects
    01 (1.0/1.0)
        Description : Project (cno-ull-ia)
        Command     : docker compose  --project-directory /opt/istac.d/ISTAC-CODIGOS-CNO-2025-Produccion ps --format "table {{.Name}}\t
{{.Service}}\t{{.Status}}\t{{.Ports}}"
        Output      : (3 lines)
        Duration    : 0.081 (local)
        Alterations : find(tcp) & count
        Expected    : Greater or equal to 1
        Result      : 2
    02 (1.0/1.0)
        Description : Project (raul-ia-metadatos)
        Command     : docker compose  --project-directory /opt/raul.d/2.raul-metadatos/source/langgraph/p2_003_auto_cms_metadata_extrac
tor ps --format "table {{.Name}}\t{{.Service}}\t{{.Status}}\t{{.Ports}}"
        Output      : (3 lines)
        Duration    : 0.076 (local)
        Alterations : find(tcp) & count
        Expected    : Greater or equal to 1
        Result      : 2
    03 (1.0/1.0)
        Description : Project (fastapi-py)
        Command     : docker compose  --project-directory /opt/istac.d/p0020-fastapi-docker/docs/docker.py-fa ps --format "table {{.Nam
e}}\t{{.Service}}\t{{.Status}}\t{{.Ports}}"
        Output      : (2 lines)
        Duration    : 0.074 (local)
        Alterations : find(tcp) & count
  03 (1.0/1.0)
        Description : Project (fastapi-py)
        Command     : docker compose  --project-directory /opt/istac.d/p0020-fastapi-docker/docs/docker.py-fa ps --format "table {{.Nam
e}}\t{{.Service}}\t{{.Status}}\t{{.Ports}}"
        Output      : (2 lines)
        Duration    : 0.074 (local)
        Alterations : find(tcp) & count
        Expected    : Greater or equal to 1
        Result      : 1
    04 (0.0/1.0)
        Description : Project (fastapi-r-py)
        Command     : docker compose  --project-directory /opt/istac.d/p0020-fastapi-docker ps --format "table {{.Name}}\t{{.Service}}\
t{{.Status}}\t{{.Ports}}"
        Output      : (2 lines)
        Duration    : 0.078 (local)
        Alterations : find(tcp) & count
        Expected    : Greater or equal to 1
        Result      : 0

RESULTS
+--------------+---------------------------+
| case_id      | 01                        |
| start_time   | 2026-04-24 14:35:56 +0100 |
| finish_time  | 2026-04-24 14:35:56 +0100 |
| duration     | 0.31006209                |
| unique_fault | 0                         |
| max_weight   | 4.0                       |
| good_weight  | 3.0                       |
| fail_weight  | 1.0                       |
| fail_counter | 1                         |
| grade        | 75                        |
+--------------+---------------------------+
```

### 8.3 Script 

```bash
$ ./dockerprojects ps

[cno-ull-ia]
- dir: /opt/istac.d/ISTAC-CODIGOS-CNO-2025-Produccion

NAME                                      SERVICE   STATUS                   PORTS
istac-codigos-cno-2025-produccion-api-1   api       Up 2 weeks (unhealthy)   0.0.0.0:8000->8000/tcp, [::]:8000->8000/tcp, 8501/tcp
istac-codigos-cno-2025-produccion-app-1   app       Up 2 weeks (healthy)     8000/tcp, 0.0.0.0:8501->8501/tcp, [::]:8501->8501/tcp


[raul-ia-metadatos]
- dir: /opt/raul.d/2.raul-metadatos/source/langgraph/p2_003_auto_cms_metadata_extractor

NAME                     SERVICE    STATUS       PORTS
istac_acmsmea_backend    backend    Up 10 days   10.140.113.39:8003->3005/tcp
istac_acmsmea_frontend   frontend   Up 10 days   10.140.113.39:8004->80/tcp


[fastapi-py]
- dir: /opt/istac.d/p0020-fastapi-docker/docs/docker.py-fa

NAME       SERVICE            STATUS      PORTS
demo9000   service-demo9000   Up 4 days   0.0.0.0:9000->9000/tcp, [::]:9000->9000/tcp


[fastapi-r-py]
- dir: /opt/istac.d/p0020-fastapi-docker

NAME       SERVICE            STATUS                          PORTS
demo9001   service-demo9001   Restarting (1) 14 seconds ago
```