// The Gate Learns to Stay Half-Closed

int gate = 1;
int gate_again = 1;
int kept_silence;

int letter_that_wont_arrive(void);

int main(void) {
  if (gate && gate_again) {
    gate = 0;
    gate_again = 0;
  }

  if (gate) return 0;

  {
  }

  kept_silence = letter_that_wont_arrive();

  if (kept_silence == kept_silence + 1) return 0;

  return 0;
}

int letter_that_wont_arrive(void) {
  return gate_again;
}
