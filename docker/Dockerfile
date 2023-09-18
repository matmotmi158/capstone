# build stage
FROM node:18.17.0 as build-stage
WORKDIR /reactApp
COPY reactApp .
RUN npm install
RUN npm run build

# production stage
FROM nginx:1.17-alpine as production-stage
COPY --from=build-stage /reactApp/bundle /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]