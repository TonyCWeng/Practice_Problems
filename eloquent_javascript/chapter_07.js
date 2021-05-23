// In this problem, there are 11 areas separated by 14 roads.
// each "road" is represented by two area names separated by a "-" (hyphen).
// All roads are two-way, meaning that we could go from the Marketplace to
// the Farm and from the Farm to the Marketplace.
const roads = [
  "Alice's House-Bob's House",   "Alice's House-Cabin",
  "Alice's House-Post Office",   "Bob's House-Town Hall",
  "Daria's House-Ernie's House", "Daria's House-Town Hall",
  "Ernie's House-Grete's House", "Grete's House-Farm",
  "Grete's House-Shop",          "Marketplace-Farm",
  "Marketplace-Post Office",     "Marketplace-Shop",
  "Marketplace-Town Hall",       "Shop-Town Hall"
];

// For this problem, the base of our graph is a null object.
function buildGraph(edges) {
  let graph = Object.create(null);
  //addEdge will create an array containing the first value of the road if the road
  // does not currently exist in the graph. Otherwise, it will push an additional path
  function addEdge(from, to) {
    if (graph[from] == null) {
      graph[from] = [to];
    } else {
      graph[from].push(to);
    }
  }
  // as mentioned previously, roads are all two-way, so we need to establish both
  // routes by adding edges(from, to) and (to, from).
  // roads are separated by hyphens, so we map the roads array and split them like so.
  for (let [from, to] of edges.map(r => r.split("-"))) {
    addEdge(from, to);
    addEdge(to, from);
  }
  return graph;
}

const roadGraph = buildGraph(roads);
