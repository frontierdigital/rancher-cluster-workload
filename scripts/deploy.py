import os
from helpers.apply_terraform import apply_terraform


def deploy():
    region = os.getenv("REGION")

    apply_terraform(
        working_dir=os.path.join(os.getcwd(), "src/terraform"),
        region=region,
        environment=os.getenv("ENVIRONMENT"),
        zone=os.getenv("ZONE"),
        set=os.getenv("SET"),
        workload_name="{0}-infra".format(os.getenv("WORKLOAD_NAME")),
        workload_type=os.getenv("WORKLOAD_TYPE"),
        workload_version=os.getenv("WORKLOAD_VERSION"),
        var_file=os.path.join(os.getcwd(), ".config", "main.tfvars"),  # noqa: E501
    )


if __name__ == "__main__":
    deploy()
