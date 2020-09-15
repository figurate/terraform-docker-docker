from diagrams import Diagram, Edge
from diagrams.onprem.container import Docker

with Diagram("Docker Container", show=False, direction="TB"):

    Docker("container") << Docker("image")
