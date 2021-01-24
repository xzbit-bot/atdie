import { EOL } from 'os';

export function atDie({
  code,
  message,
}: {
  code: number,
  message: string,
}): void {
  process.stderr.write(
    `${message}${EOL}`,
    'utf8',
    (): void => process.exit(code),
  );
}
