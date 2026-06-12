// what we promised each other

type Us = {
  resolve: () => never
}

const us: Promise<never> = new Promise(() => {})
