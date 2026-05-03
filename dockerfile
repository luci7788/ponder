FROM node:20-alpine

WORKDIR /app

RUN corepack enable && corepack prepare yarn@1.22.19 --activate

COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 42069

CMD ["yarn", "start"]
