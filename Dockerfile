FROM public.ecr.aws/hk01/docker-node:22-v0.2 AS installer

COPY server.js ./

CMD ["node", "server.js"]


# WORKDIR /srv


# copy all is fine
# COPY . ./

# CMD ["ls", "-al"]

# install devDeps for build and test 
# RUN --mount=type=secret,id=NPM_TOKEN,env=NPM_TOKEN \
#     /base/scripts/token-init.sh \
#     && yarn --frozen-lockfile

# FROM installer AS builder

# ARG APP_ENV
# ARG BUILD_ID

# RUN BUILD_ID=${BUILD_ID} yarn build --mode ${APP_ENV:-production}


# FROM nginx:alpine

# RUN echo 'run'
# CMD ["echo", "hello world"]