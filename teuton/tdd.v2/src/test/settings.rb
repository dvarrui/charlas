
group "Setttngs" do

  @projects = [
    {
      name: "cno-ull-ia",
      dir: "/opt/istac.d/ISTAC-CODIGOS-CNO-2025-Produccion",
      ports: [8000, 8501]
    }, {
      name: "raul-ia-metadatos",
      dir: "/opt/raul.d/2.raul-metadatos/source/langgraph/p2_003_auto_cms_metadata_extractor",
      ports: [8003, 8004]
    }, {
      name: "fastapi-py",
      dir: "/opt/istac.d/p0020-fastapi-docker/docs/docker.py-fa",
      ports: [9000]
    }, {
      name: "fastapi-r-py",
      dir: "/opt/istac.d/p0020-fastapi-docker",
      ports: [9001]
     }
  ]
  
end