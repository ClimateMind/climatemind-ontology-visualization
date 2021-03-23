# climatemind-visualization

The ontology is visualized using cytoscape.js and Dash. 

![image][https://github.com/ClimateMind/climatemind-visualization/blob/main/README_image.jpg?raw=true]

## Setup

0. (optional) make a new Python virtual environment
1. Clone the repository

```
git clone https://github.com/ClimateMind/climatemind-visualization.git
```
2. Install the requirements
```
pip install -r requirements.txt
```
3. Run the script
```
python visualize.py
```
4. Visit http://127.0.0.1:8050/

## Usage
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

## Notes
```ontology.owl``` file is included in this repository. However, if you want to see an updated view of the repository, then download the OWL from WebProtge and replace the ontology.owl file.
