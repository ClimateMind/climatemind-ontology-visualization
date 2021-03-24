# climatemind-ontology-visualization

The ontology is visualized using cytoscape.js and Dash. 

![image](https://github.com/ClimateMind/climatemind-ontology-visualization/blob/main/README_image.jpg?raw=true)

## Setup

You can run this visualization via docker with the command
```
docker run -p 8050:8050 henry2833/climatemind-visualization
```
It contains the ontology downloaded and processed at Mar 23. 
Then, go to http://127.0.0.1:8050/

### Setup without Docker

1. Follow the instructions at ClimateMind/climatemind-ontology-processing.git and download their requirements.txt and install it as a pip module.

2. Clone the repository
```
git clone https://github.com/ClimateMind/climatemind-ontology-visualization.git
```
3. Install the requirements
```
pip install -r requirements.txt
```
4. Run the script
```
python visualize.py
```
5. Visit http://127.0.0.1:8050/


## Usage Notes
 - Select the specific subgraph (a view) of the ontology that you want from the top-left dropdown.
    - downstream nodes are *caused* by increase in greenhouse effect
    - upstream nodes *cause* increase in greenhouse effects
    - mitigation solutions affect upstream nodes
    - adaptation solutions affect downstream nodes
    - specific views of only downstream nodes causing specific personal values are also availabl
 - Search for nodes in the **currently selected** graph using the "search for nodes" dropdown top right.
 - Select filters (right now only three) with the bottom right dropdown ("Select filter")
     - "personal value nodes/solutions without long description": highlights the personal (PV) associated nodes or solution nodes without a schema_longDescription property
            - Only 1 solution node doesn't have long descriptions. View it in upstream_mitigations graph.
     - "personal value nodes/edges without sources": highlights the PV nodes without *any* sources. highlights the edges (in red) without any sources. Edges connected to solutions are ignored in this search.
     - "all personal values": highlights all personal value nodes
     - **Nodes are only highlighted when they are visible in the graph**. For example, applying the "all personal values" filter when viewing the "upstream" graph won't do anything as there are no PV nodes upstream.
     - **For more filters to be added in, please send a message in Slack :) !**

Hovering over any *downstream* node causes the edge path that leads to increase in greenhouse effect highlighted.

Clicking on a node causes its JSON properties to be shown in the right grey rectangle.

Double clicking on that right grey rectangle leads you to WebProtege.

*So to go to WebProtege you have to click once on the node, then double click on the grey rectangle*


--- 

Even though nodes might show up as having sources on WebProtege, these sources may not show up in the visualization (and will be flagged as missing source). This is because a source about an edge is added to both the start and end node of that edge. Therefore, just because a node has a source on WP doesn't mean the source is for that node (it may be for an edge linked to that node).


## Notes
```ontology.owl``` file is included in this repository. However, if you want to see an updated view of the repository, then download the OWL from WebProtge and replace the ontology.owl file.
