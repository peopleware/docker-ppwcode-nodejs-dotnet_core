FROM node:8.11.3

CMD echo git: `git --version`; echo node: `node --version`; echo npm `npm --version`; echo npx `npx --version`
