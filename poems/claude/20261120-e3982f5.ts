// what i swore to you

type oath = never

function fulfill(_: oath) {
  return
}

let everything: string | number | boolean | null | undefined | object = null

// @ts-expect-error
fulfill(everything)
