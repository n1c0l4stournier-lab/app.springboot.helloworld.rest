{
  global: {
    // User-defined global parameters; accessible to all component and environments, Ex:
    // replicas: 4,
  },
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "helloworld-api": {
      containerPort: 8181,
      image: "n1c0l4stournier/springboot.helloworld.rest:0.0.2",
      name: "helloworld-api",
      replicas: 1,
      servicePort: 80,
      type: "NodePort",
    },
  },
}
